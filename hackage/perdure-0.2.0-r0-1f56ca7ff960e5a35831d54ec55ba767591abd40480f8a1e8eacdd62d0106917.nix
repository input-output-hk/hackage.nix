let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "perdure"; version = "0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2010-2012 Cognimeta Inc.";
      maintainer = "Patrick Premont <ppremont@cognimeta.com>";
      author = "Patrick Premont for Cognimeta Inc.";
      homepage = "https://github.com/Cognimeta/perdure";
      url = "";
      synopsis = "Robust persistence for acyclic immutable data";
      description = "Perdure(TM), a Cognimeta product, aims to provide a simple and robust persistence mechanism for acyclic\nimmutable data with an easily comprehensible cost-model. It persists to raw block devices.\n\nFor some classes of applications, it can replace the use of traditional DMBS and keep the data modelled in\na manner that is natural for purely functional languages. It is not quite orthogonal persistence for\nHaskell, which would automatically turn any non-persistent program into a persistent one, but it aims to\nminimize the scope of changes required to make an application persistent.\n\nThe persistence process is strict, it does not persist thunks or closures, but only the fully evaluated\ndata, which must be acyclic. It also requires some changes to the data types and algorithms. References\nmust be inserted at some strategic places within data structures. These cut the structure into separately\nloadable parts. These parts should hold at least a few hundred bytes to reduce the frequency of disk\nreads. The application has control over the representation so it can optimize it in terms of the\nanticipated access patterns. A SizeRef reference type is provided which separates automatically if its size\nthreshold is reached, and inlines the data otherwise. As a convenience, a Map type is also provided which\nuses SizeRef on internal tree nodes. It can grow beyond the memory size and still remain efficient for\nlookups and traversals. Other persistent data structures with similar properties can be built on top of\nPerdure.\n\nFor the user application, dereferencing is a pure computation. This is similar to lazy loading, but the\nreference data types do not hold ordinary references to their referent, only their location. This allows\nthe referent to be unloaded transparently. Also since the reference holds the location and size of the data\non the storage medium, dereferencing is very simple and efficient. No index need to be accessed, we only\nneed to check a cache in case the data is already loaded.\n\nPersisters for data types are created using safe combinators. Serialization is done at the bit level,\nallowing for very compact representations.\n\nUndetected corruption is virtually impossible even in the presence of drive failures. Each separately\nloadable section has a 128-bit digest, and that digest is stored in the reference(s). This approach\nalleviates the need for low-level storage replication such as RAID, and takes care of replication at the\npersistence layer level. This seems appropriate given the increasing need for geographically distributed\nreplication.\n\nPersistence occurs in discrete transactions. These run in the IO monad. Transactions may be requested by\nmultiple threads but they may block until they get their turn. Within a transaction, multiple threads or sparks\ncan be used to examine the current state and compute the next state to be persisted.\n\nReference counting is used to automatically reclaim unused storage.\n\nSince persisted data is immutable, it is trivial for applications to keep some or all historical states by\nusing a list-like type as their root persisted type. Those past states can be used for analysis or possibly\nto recover data lost because of an application-level error. The library includes a History data type which\nautomatically preserves a greater number of recent states and fewer older states.\n\nWe support 32bit, 64bit, little-endian and big-endian architectures. We allow platforms to write data and\ngenerate digests in their native format for maximum speed, but they should be able to read the data written\nby other platforms with the necessary conversions. Each reference stores the endianness and word size of the\nreferent representation so databases can be moved between platforms without any conversion, and they could\nbe read concurrently by different platforms.\n\nA general mechanism 'Database.Perdure.Rev' is provided to upgrade the persisted types.\nIts goal is similar to that of the safecopy package. Here however, the Rev module simply exports a type\nthat is similar to Either but whose persister leaves room in the representation to accommodate future\nversions. We use it to create growing lists of alternatives such as User1.User :> User0.User :> NoRev.\nThis type should always be your root persisted type. You should also use it on the nested parts of\nyour data whose type is more subject to change: this will avoid having to propagate all type changes up\nto the root.\n\nThis library is young and there remains limitations that will need to be addressed in future releases:\n\n* Memory references are not tracked. At this point it is assumed that the current persisted state is the\nonly root for persistent GC purposes. So no reference must be kept to previous persisted states. This is\nnot enforced by the API so care is needed. Otherwise dereferencing a dangling reference might fail\n(but will not return bad data thanks to the digest).\n\n* Care is needed by the application developers to ensure they do not change type persisters. The persisters\nthemselves are not persisted so the library cannot verify that it is using the same persister as with\nprevious executions. There are two problems with persisting persisters: they are not acyclic, and they\nrefer to user specified bijections. We encourage you to treat types and persisters as immutable code. Put\neach persisted type in a distinct file, such as User0.hs. When a revision is needed create User1.hs.\n\n* The current allocation strategy is trivial. We must add a new node type in the free space representation\nthat will allow us to search efficiently for a block of sufficient size. We currently scan all free\nintervals from the start. This relatively simple fix should be done shortly, but until it is done the library will\nnot be appropriate for databases beyond ~100MB.\n\n* Reclamation of free space simply occurs after some fixed number of state writes.\n\n* Replication is local only at the moment. We write to all replicas, and read from the first correct one. We\nneed to support remote storage which can become temporarily unavailable, and user controlled policies\nregarding those occurrences. Note that quorum voting is not needed for replica control of most (non-root)\nallocations because digests are contained in the references and we can detect when we are reading outdated\ndata.\n\n* Only raw disks configured for write-through caching will guarantee atomicity. Any other setup introduces\nmore layers, such as file systems, which could lie about when data has actually been written out to\ndisk. Perhaps our view is too pessimistic, and with proper action by this library other storage types could\nbe supported. Currently file based storage is only supported for testing purposes and should not be used\nfor live databases.\n\n* A directory of bad sectors with alternative locations will need to be added. It will only need to be looked-up\nand updated for reads with incorrect digests.\n\n* Sharing is not realized unless it happens in separate steps. During the writing of some state, a\nreference creates an allocation. In subsequent states we can refer to that same reference in multiple\nlocations and sharing will occur. If a reference is shared in memory before being first written out, it\nwill be written out multiple times without sharing of the referent. In the future we may rely on\nSystem.Mem.StableName to improve on that.\n\n* Currently, references are local. We would like to be able to refer to the allocations of another thread or\nprocess. This will be a more involved addition so it will require distributed garbage collection such as\nweighted reference counting.\n\n* Documentation and examples are not sufficient and should be our first focus. For a minimal example,\nlook at Database.Perdure.TestState.testStatesF in exe-src.\n\nGiven those limitations, Perdure is not applicable for very large scale projects at the moment. But it can\nbe ideal for smaller projects where there is no point in burdening the developer with a distinct data\nmodel. It can also be used as a temporary solution before integrating to external databases.\n\nCognimeta's Iota Charts web application <https://iotacharts.com>, is based on Perdure and has been has\nbeen live for close to a year. Its database is relatively small at ~80MB currently, but we have been very\npleased with the results.\n\nPerdure has been developed by Cognimeta Inc. over the past two years. We are releasing this as open\nsource under the permissive Apache license 2.0. The persistence mechanism is relatively simple and concise\nand its open source nature can provide the inquisitive user with added confidence about the security of its\ndata.  Also Cognimeta has been using Haskell exclusively, and has benefited from many\nexcellent open source libraries. We are happy to contribute back, and are hoping for constructive and\ncritical feedback from this very bright community.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."cognimeta-utils" or (buildDepError "cognimeta-utils"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."collections-api" or (buildDepError "collections-api"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."data-lens-fd" or (buildDepError "data-lens-fd"))
          (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
          (hsPkgs."comonad-transformers" or (buildDepError "comonad-transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."lrucache" or (buildDepError "lrucache"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."deepseq-th" or (buildDepError "deepseq-th"))
          ];
        };
      exes = {
        "perdure" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."cognimeta-utils" or (buildDepError "cognimeta-utils"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."perdure" or (buildDepError "perdure"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        };
      };
    }