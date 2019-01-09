{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sprinkles"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Author name here";
      homepage = "https://sprinkles.tobiasdammers.nl/";
      url = "";
      synopsis = "JSON API to HTML website wrapper";
      description = "Please see README.md. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack. More text to please stack.";
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
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bcrypt)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.css-syntax)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.ginger)
          (hsPkgs.hashable)
          (hsPkgs.heredoc)
          (hsPkgs.hsyslog)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.memcache)
          (hsPkgs.mime-types)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.nonce)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.system-locale)
          (hsPkgs.tagsoup)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.unix-time)
          (hsPkgs.unordered-containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-handler-fastcgi)
          (hsPkgs.warp)
          (hsPkgs.yaml)
          (hsPkgs.yeshql-hdbc)
          ];
        };
      exes = {
        "sprinkles" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sprinkles)
            (hsPkgs.async)
            (hsPkgs.data-default)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.parsec)
            ];
          };
        };
      tests = {
        "sprinkles-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sprinkles)
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