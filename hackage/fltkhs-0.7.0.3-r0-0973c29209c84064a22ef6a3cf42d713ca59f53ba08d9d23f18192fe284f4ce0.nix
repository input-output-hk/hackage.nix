{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bundled = false; demos = true; opengl = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "fltkhs"; version = "0.7.0.3"; };
      license = "MIT";
      copyright = "© 2017 Aditya Siram All Rights Reserved";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs";
      url = "";
      synopsis = "FLTK bindings";
      description = "Low level bindings for the FLTK GUI toolkit. For installation and quick start instruction please scroll all the way down to the README.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ] ++ (pkgs.lib).optional (!system.isOsx && !system.isWindows) (hsPkgs.buildPackages.pkg-config or (pkgs.buildPackages.pkg-config));
        };
      exes = {
        "fltkhs-fluidtohs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.fltkhs)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            ];
          };
        "fltkhs-buttons" = { depends = [ (hsPkgs.base) (hsPkgs.fltkhs) ]; };
        "fltkhs-example-opengl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.text)
            (hsPkgs.OpenGLRaw)
            ];
          };
        };
      };
    }