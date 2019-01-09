{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "termbox"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/termbox";
      url = "";
      synopsis = "termbox bindings";
      description = "This package provides a thin wrapper around @termbox v1.1.2@, a simple C\nlibrary for writing text-based user interfaces: <https://github.com/nsf/termbox>\n\nThe full source of @termbox v1.1.2@ (1000 lines of C) is bundled; you do\nnot need to install any system packages to use this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.array) (hsPkgs.base) ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      exes = {
        "termbox-example-colors" = {
          depends = [ (hsPkgs.base) (hsPkgs.termbox) ];
          };
        };
      };
    }