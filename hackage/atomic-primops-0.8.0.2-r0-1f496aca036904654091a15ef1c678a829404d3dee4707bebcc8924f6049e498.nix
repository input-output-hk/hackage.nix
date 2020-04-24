{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atomic-primops"; version = "0.8.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "A safe approach to CAS and other atomic ops in Haskell.";
      description = "After GHC 7.4 a new `casMutVar#` primop became available, but it's\ndifficult to use safely, because pointer equality is a highly\nunstable property in Haskell.  This library provides a safer method\nbased on the concept of \"Tickets\".\n\nAlso, this library uses the \"foreign primop\" capability of GHC to\nadd access to other variants that may be of\ninterest, specifically, compare and swap inside an array.\n\nNote that as of GHC 7.8, the relevant primops have been included in GHC itself.\nThis library is engineered to work pre- and post-GHC-7.8, while exposing the\nsame interface.\n\nChanges in 0.3:\n\n* Major internal change.  Duplicate the barrier code from the GHC RTS and thus\nenable support for executables that are NOT built with '-threaded'.\n\nChanges in 0.4:\n\n* Further internal changes, duplicate 'cas' routine well as barriers.\n\n* Add `fetchAddByteArrayInt`\n\n* Add an `Unboxed` counter variant that uses movable \"ByteArray\"s on the GHC heap.\n\nChanges in 0.5:\n\n* Remove dependency on bits-atomic unless a flag is turned on.\n\nChanges in 0.5.0.2:\n\n* IMPORTANT BUGFIXES - don't use earlier versions.  They have been marked deprecated.\n\nChanges in 0.6.1\n\n* This is a good version to use for GHC 7.8.3.  It includes portability and bug fixes\nand adds atomicModifyIORefCAS.\n\nChanges in 0.7:\n\n* This release adds support for GHC 7.10 and its expanded library of (now inline) primops.\n\nChanges in 0.8:\n\n* Implements additional fetch primops available in GHC 7.10";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }