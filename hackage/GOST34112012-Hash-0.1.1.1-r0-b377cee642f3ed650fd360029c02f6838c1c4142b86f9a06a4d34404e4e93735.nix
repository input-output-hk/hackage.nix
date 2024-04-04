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
      specVersion = "3.0";
      identifier = { name = "GOST34112012-Hash"; version = "0.1.1.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "verrens@yandex.ru";
      author = "Alexey Degtyarev <alexey@renatasystems.org>,\nDenis Afonin <verrens@yandex.ru>";
      homepage = "https://github.com/verrens/GOST34112012-Hash";
      url = "";
      synopsis = "Bindings to the GOST R 34.11-2012 hashing implementation";
      description = "Binds https://github.com/adegtyarev/streebog , a C\nimplementation of the GOST R 34.11-2012 hash function.\nSee @c_src/streebog/README.md@ and @test/Main.hs@ to get started.\nRequires a processor that supports MSSE4.1!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GOST34112012-Hash" or (errorHandler.buildDepError "GOST34112012-Hash"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }