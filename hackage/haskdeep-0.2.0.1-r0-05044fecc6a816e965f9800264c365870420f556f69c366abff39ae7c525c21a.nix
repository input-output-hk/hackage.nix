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
      identifier = { name = "haskdeep"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2015 Mauro Taraborelli";
      maintainer = "maurotaraborelli@gmail.com";
      author = "Mauro Taraborelli";
      homepage = "https://github.com/maurotrb/haskdeep";
      url = "";
      synopsis = "Computes and audits file hashes.";
      description = "A command line application that computes file hashes traversing recursively\nthrough a directory structure.\n\nThe known hashes can be used to audit the same directory structure or a copy\nof it.\n\nExecute haskdeep without arguments and it will show you the help text:\n\n> user@host:~\$ haskdeep\n>\n>  Usage: haskdeep COMMAND [-c|--computation MODE] [-r|--root DIRNAME] [-k|--known FILENAME]\n>    Computes hashes and audit a set of files\n>\n>  Available options:\n>    -h,--help                Show this help text\n>    -v,--version             Show version information\n>    -c,--computation MODE    md5 | sha1 | sha256 | skein512 - default md5\n>    -r,--root DIRNAME        Root directory - default current directory\n>    -k,--known FILENAME      Known hashes file - default known.haskdeep\n>    -e,--excl-regex REGEX    Exclude files or directories based on regex\n>    -f,--incl-mod-from DATE  Include files modified from yyyy-mm-ddThh:mm:ssZ\n>    -t,--incl-mod-upto DATE  Include files modified up to yyyy-mm-ddThh:mm:ssZ\n>\n>  Available commands:\n>    compute                  Computes file hashes and saves them to known hashes file\n>    audit                    Audits files comparing them to known hashes\n\nDefault usage:\n\n1. create known hashes of files contained in a root directory (traversed recursively)\n\n>  user@host:~\$ haskdeep compute -c md5 -r myimportantfiles/ -k knownhashes.txt -e \"tmp|\\.log\"\n\n2. verify a copy of the same files comparing them with known hashes\n\n>  user@host:~\$ haskdeep audit -c md5 -r copyofmyimportantfiles/ -k knownhashes.txt -e \"tmp|\\.log\"\n\nHeavily inspired by @hashdeep@: <http://md5deep.sourceforge.net/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskdeep" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."cryptohash-cryptoapi" or (buildDepError "cryptohash-cryptoapi"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."crypto-conduit" or (buildDepError "crypto-conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            ];
          buildable = true;
          };
        };
      };
    }