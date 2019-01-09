{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pretty-show-ansi-wl"; version = "1.9.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@liamoc.net";
      author = "Iavor S. Diatchki, Liam O'Connor";
      homepage = "https://github.com/liamoc/pretty-show-ansi-wl";
      url = "";
      synopsis = "Like pretty-show, but only for ansi-wl-pprint";
      description = "This is an adapted version of Iavor S. Diatchki's pretty-show package,\nbut using ansi-wl-pprint as the underlying pretty-printing library,\nand without certain extra features like HTML rendering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.haskell-lexer)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.ghc-prim)
          ];
        build-tools = [
          ((hsPkgs.buildPackages).happy)
          ((hsPkgs.buildPackages).happy)
          ];
        };
      };
    }