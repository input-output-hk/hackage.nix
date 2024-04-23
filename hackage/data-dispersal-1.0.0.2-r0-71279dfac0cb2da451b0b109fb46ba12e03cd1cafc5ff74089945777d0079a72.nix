{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "data-dispersal"; version = "1.0.0.2"; };
      license = "LGPL-2.1-only";
      copyright = "Peter Robinson 2014";
      maintainer = "peter.robinson@monoid.at";
      author = "Peter Robinson <peter.robinson@monoid.at>";
      homepage = "http://monoid.at/code";
      url = "";
      synopsis = "Space-efficient and privacy-preserving data dispersal algorithms.";
      description = "Given a ByteString of length @D@, we encode the ByteString as a list of @n@\n'Fragment's, each containing a ByteString\nof length @O(D/m)@. Then, each fragment could be stored on a separate\nmachine to obtain fault-tolerance:\nEven if all but @m@ of these machines crash, we can still reconstruct the original\nByteString out of the remaining @m@ fragments.\nNote that the total space requirement of the @m@ fragments is @m * O(D/m)=O(D),@\nwhich is clearly space-optimal.\nThe total space required for the n fragments is @O((n/m)*D)@.\nNote that @m@ and @n@ can be chosen to be of the same order, so the\nasymptotic storage overhead for getting good fault-tolerance increases only by\na constant factor.\n\n/GHCi Example:/\n\n> > :m + Data.IDA\n> > let msg = Data.ByteString.Char8.pack \"my really important data\"\n> > let fragments = encode 5 15 msg\n> -- Now we could distributed the fragments on different sites to add some\n> -- fault-tolerance.\n> > let frags' = drop 5 $ take 10 fragments -- let's pretend that 10 machines crashed\n> -- Let's look at the 5 fragments that we have left:\n> > mapM_ (Prelude.putStrLn . show)  frags'\n> (6,[273,771,899,737,285])\n> (7,[289,939,612,285,936])\n> (8,[424,781,1001,322,788])\n> (9,[143,657,790,157,423])\n> (10,[314,674,418,888,423])\n> -- Space-efficiency: Note that the length of each of the 5 fragments is 5\n> -- and our original message has length 24.\n> > decode frags'\n> \"my really important data\"\n\n/Encrypted Fragments:/\n\nThe module @Data.IDA@ contains an information dispersal algorithm that produces\nspace-optimal fragments. However, the knowledge of 1 or more fragments might\nallow an adversary to deduce some information about the original data.\nThe module @Crypto.IDA@ combines information dispersal with\nsecret sharing: the knowledge of up to @m-1@ fragments does not leak any\ninformation about the original data.\n\nThis could be useful in scenarios where we need to store data at untrusted\nstorage sites: To this end, we store one encrypted fragment at each site.\nIf at most @m-1@ of these untrusted sites collude, they will still\nbe unable to obtain any information about the original data.\nThe added security comes at the price of a slightly\nincreased fragment size (by an additional constant 32 bytes) and an\nadditional overhead in the running time of the encoding/decoding process.\nThe algorithm is fully described in module \"Crypto.IDA\".\n\n/Fault-Tolerance:/\n\nSuppose that we have @N@ machines and encode our data as @2log(N)@ fragments\nwith reconstruction threshold m = @log(N)@.\nLet's assume that we store each fragment on a separate machine and each\nmachine fails (independently) with probability at most 0.5.\n\n* What is the probability of our data being safe?\n@Pr[ at most n-m machines crash ] >= 1-0.5^(log(N)) = 1-N^(-1).@\n\n* What is the overhead in terms of space that we pay for this level of fault-tolerance?\nWe have n fragments, each of size @O(D\\/m)@, so the total space is @O(n D\\/ m) =\n2D.@\nIn other words, we can guarantee that the data survives with high probability\nby increasing the required space by a constant factor.\n\nThis library is based on the following works:\n\n* \\\"Efficient Dispersal of\nInformation for Security, Load Balancing, and Fault Tolerance\\\", by Michael O.\nRabin, JACM 1989.\n\n* \\\"How to share a secret.\\\" by Adi Shamir.\nIn Communications of the ACM 22 (11): 612–613, 1979.\n\n* \\\"Secret Sharing Made Short\\\" Hugo Krawczyk.\nCRYPTO 1993: 136-146";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."AES" or (errorHandler.buildDepError "AES"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."secret-sharing" or (errorHandler.buildDepError "secret-sharing"))
        ];
        buildable = true;
      };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."spool" or (errorHandler.buildDepError "spool"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
          buildable = true;
        };
      };
    };
  }