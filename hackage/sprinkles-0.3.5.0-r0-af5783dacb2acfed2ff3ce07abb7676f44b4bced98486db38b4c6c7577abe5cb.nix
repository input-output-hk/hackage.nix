{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sprinkles"; version = "0.3.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Author name here";
      homepage = "https://bitbucket.org/tdammers/sprinkles";
      url = "";
      synopsis = "JSON API to HTML website wrapper";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.Glob)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.HDBC-mysql)
          (hsPkgs.HTTP)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.classy-prelude)
          (hsPkgs.containers)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ginger)
          (hsPkgs.hashable)
          (hsPkgs.hsyslog)
          (hsPkgs.http-types)
          (hsPkgs.memcached-binary)
          (hsPkgs.mime-types)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-creole)
          (hsPkgs.pandoc-types)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random-shuffle)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.system-locale)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-handler-fastcgi)
          (hsPkgs.warp)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "sprinkles" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sprinkles)
            (hsPkgs.classy-prelude)
            (hsPkgs.data-default)
            (hsPkgs.safe)
            (hsPkgs.parsec)
            ];
          };
        };
      tests = {
        "sprinkles-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sprinkles)
            (hsPkgs.classy-prelude)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.heredoc)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.wai-extra)
            ];
          };
        };
      };
    }