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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "aeson"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/mailrank/aeson";
      url = "";
      synopsis = "Fast JSON parsing and generation";
      description = "A JSON parsing and generation library optimized for ease of use\nand high performance.\n\nParsing performance with GHC 6.12.3 on a late 2010 MacBook Pro\n(2.66GHz Core i7), for mostly-English tweets from Twitter's JSON\nsearch API:\n\n* 854 bytes: 21054 msg\\/sec (17.1 MB/sec)\n\n* 6.4 KB: 4545 msg\\/sec (28.6 MB/sec)\n\n* 31.2 KB: 856 msg\\/sec (26.1 MB/sec)\n\n* 61.5 KB: 403 msg\\/sec (24.2 MB/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped:\n\n* 14.6 KB: 1250 msg\\/sec (17.9 MB/sec)\n\n* 44.1 KB: 363 msg\\/sec (15.6 MB/sec)\n\nEncoding performance on the same machine and data:\n\n* 854 bytes: 10647 msg\\/sec (8.7 MB/sec)\n\n* 6.4 KB: 2098 msg\\/sec (13.2 MB/sec)\n\n* 31.2 KB: 422 msg\\/sec (12.9 MB/sec)\n\n* 61.5 KB: 219 msg\\/sec (13.2 MB/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-show" or (buildDepError "bytestring-show"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      };
    }