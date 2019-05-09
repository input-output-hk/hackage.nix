{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-postal"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "2018 Fábián Tamás László";
      maintainer = "Fábián Tamás László <giganetom@gmail.com>";
      author = "Fábián Tamás László <giganetom@gmail.com>";
      homepage = "https://github.com/netom/haskell-postal#readme";
      url = "";
      synopsis = "Haskell binding for the libpostal library";
      description = "Provides an interface for the libpostal NLP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.inline-c)
          ];
        pkgconfig = [ (pkgconfPkgs."libpostal") ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.inline-c)
            (hsPkgs.hspec)
            ];
          pkgconfig = [ (pkgconfPkgs."libpostal") ];
          };
        };
      };
    }