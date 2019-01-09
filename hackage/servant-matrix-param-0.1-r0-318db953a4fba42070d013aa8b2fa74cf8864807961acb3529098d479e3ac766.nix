{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-servant-aeson-specs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-matrix-param"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Matrix parameter combinator for servant";
      description = "Matrix parameter combinator for servant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          ] ++ (pkgs.lib).optional (flags.with-servant-aeson-specs) (hsPkgs.servant-aeson-specs);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.servant)
            (hsPkgs.servant-aeson-specs)
            (hsPkgs.servant-matrix-param)
            ];
          };
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.servant) (hsPkgs.doctest) ];
          };
        };
      };
    }