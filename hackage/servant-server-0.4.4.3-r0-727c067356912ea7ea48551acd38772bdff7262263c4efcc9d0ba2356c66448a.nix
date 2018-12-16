{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-server";
        version = "0.4.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://haskell-servant.github.io/tutorial tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.safe)
          (hsPkgs.servant)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.system-filepath)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.aeson)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsec)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.string-conversions)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }