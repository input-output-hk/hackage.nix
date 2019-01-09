{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskdeep"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012 Mauro Taraborelli";
      maintainer = "maurotaraborelli@gmail.com";
      author = "Mauro Taraborelli";
      homepage = "https://github.com/maurotrb/haskdeep";
      url = "";
      synopsis = "Computes and audits file hashes.";
      description = "A command line application that computes file hashes traversing recursively\nthrough a directory structure.\n\nThe known hashes can be used to audit the same directory structure or a copy\nof it.\n\nExecute haskdeep without arguments and it will show you the help text:\n\n> user@host:~\$ haskdeep\n>\n>  Usage: haskdeep COMMAND [-c|--computation MODE] [-r|--root DIRNAME] [-k|--known FILENAME] [-i|--ignore RULE]\n>    Computes hashes and audit a set of files\n>\n>  Available options:\n>    -c,--computation MODE    md5 | sha1 | sha256 | skein512 - default md5\n>    -r,--root DIRNAME        Root directory - default current directory\n>    -k,--known FILENAME      Known hashes file - default known.haskdeep\n>    -i,--ignore RULE         Regex to ignore files or directories\n>    -h,--help                Show this help text\n>\n>  Available commands:\n>    compute                  Computes file hashes and saves them to known hashes file\n>    audit                    Audits files comparing them to known hashes\n\nDefault usage:\n\n1. create known hashes of files contained in a root directory (traversed recursively)\n\n>  user@host:~\$ haskdeep compute -c md5 -r myimportantfiles/ -k knownhashes.txt -i \"tmp|\\.log\"\n\n2. verify a copy of the same files comparing them with known hashes\n\n>  user@host:~\$ haskdeep audit -c md5 -r copyofmyimportantfiles/ -k knownhashes.txt -i \"tmp|\\.log\"\n\nHeavily inspired by @hashdeep@: <http://md5deep.sourceforge.net/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskdeep" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.crypto-api)
            (hsPkgs.crypto-conduit)
            (hsPkgs.filesystem-conduit)
            (hsPkgs.optparse-applicative)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            ];
          };
        };
      };
    }