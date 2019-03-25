{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "trasa-client"; version = "0.4"; };
      license = "MIT";
      copyright = "© 2017-2019 Andrew Martin\n© 2017-2019 Kyle McKean";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nKyle McKean <mckean.kylej@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin\nKyle McKean";
      homepage = "https://github.com/haskell-trasa/trasa";
      url = "";
      synopsis = "Type safe http requests";
      description = "http-client integration for trasa";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.trasa)
          ];
        };
      };
    }