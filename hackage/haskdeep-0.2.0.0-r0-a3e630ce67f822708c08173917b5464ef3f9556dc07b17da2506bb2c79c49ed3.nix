{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskdeep"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Mauro Taraborelli";
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
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."cryptohash-cryptoapi" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-cryptoapi"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."crypto-conduit" or ((hsPkgs.pkgs-errors).buildDepError "crypto-conduit"))
            (hsPkgs."filesystem-conduit" or ((hsPkgs.pkgs-errors).buildDepError "filesystem-conduit"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa-text"))
            ];
          buildable = true;
          };
        };
      };
    }