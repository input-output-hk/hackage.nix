{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskdeep";
        version = "0.2.0.1";
      };
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
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.cryptohash-cryptoapi)
            (hsPkgs.crypto-api)
            (hsPkgs.crypto-conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.unix-compat)
          ];
        };
      };
    };
  }