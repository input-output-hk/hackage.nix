{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "UrlDisp";
        version = "0.1.7";
      };
      license = "BSD-3-Clause";
      copyright = "Artyom Shalkhakov, Sterling Clover";
      maintainer = "Artyom Shalkhakov <artyom.shalkhakov@gmail.com>";
      author = "Artyom Shalkhakov, Sterling Clover";
      homepage = "http://www.haskell.org/haskellwiki/UrlDisp";
      url = "";
      synopsis = "Url dispatcher. Helps to retain friendly URLs in web applications.";
      description = "The aim of urldisp is to provide a simple, declarative and expressive URL routing in web applications.";
      buildType = "Simple";
    };
    components = {
      "UrlDisp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.mtl)
          (hsPkgs.MaybeT)
        ];
      };
    };
  }