{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "iterIO"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "levya@cs.stanford.edu, deian@cs.stanford.edu";
      author = "David Mazieres, Deian Stefan, Amit Levy";
      homepage = "http://www.scs.stanford.edu/~dm/iterIO";
      url = "";
      synopsis = "Iteratee-based IO with pipe operators";
      description = "Iteratee-based IO is an alternative to lazy IO that offers\nbetter error handling, referential transparency, and\nconvenient composition of protocol layers or parsers.  This\npackage provides iteratees based around /pipe/ operators for\nhooking together application components and directing data\nflow.  New users should see the tutorial in the \"Data.IterIO\"\nmodule documentation.  Highlights of the library include:\n\n* Heavy emphasis on ease of use, ease of learning, and\nuniformity of mechanism.\n\n* Copious documentation.\n\n* Consistent EOF and error handling to avoid resource leaks\nand other issues in corner cases.\n\n* A set of iteratee parsing combinators providing LL(*)\nparsing while generally not consuming large amounts of\nmemory for backtracking.\n\n* Seamless integration with attoparsec for LL(1) parsing.\n\nSee \"Data.IterIO\" for a discussion of the differences between\niterIO and the two previous iteratee implementations (iteratee\nand enumerator).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."stringsearch" or ((hsPkgs.pkgs-errors).buildDepError "stringsearch"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = [ (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ];
        buildable = true;
        };
      };
    }