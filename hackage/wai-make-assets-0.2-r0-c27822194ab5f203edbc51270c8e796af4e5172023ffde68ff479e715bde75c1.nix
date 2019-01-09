{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-make-assets"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SoenkeHahn@gmail.com";
      author = "";
      homepage = "https://github.com/soenkehahn/wai-make-assets#readme";
      url = "";
      synopsis = "Compiling and serving assets";
      description = "Small wai library and command line tool for compiling and serving assets (e.g. through ghcjs, elm, sass)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.string-conversions)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.shake)
          (hsPkgs.http-types)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "wai-make-assets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.string-conversions)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.shake)
            (hsPkgs.http-types)
            (hsPkgs.directory)
            (hsPkgs.getopt-generics)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.string-conversions)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.shake)
            (hsPkgs.http-types)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.wreq)
            (hsPkgs.mockery)
            (hsPkgs.lens)
            (hsPkgs.silently)
            ];
          };
        };
      };
    }