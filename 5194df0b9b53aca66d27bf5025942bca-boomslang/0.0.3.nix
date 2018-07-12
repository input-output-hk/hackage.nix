{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "boomslang";
          version = "0.0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Boomshine clone";
        description = "A clone of Boomshine (see <http://www.k2xl.com/games/boomshine/>).";
        buildType = "Simple";
      };
      components = {
        exes = {
          "boomslang" = {
            depends  = if compiler.isGhc && compiler.version.ge "6.12"
              then [
                hsPkgs.GLFW-b
                hsPkgs.MonadRandom
                hsPkgs.OpenGL
                hsPkgs.base
                hsPkgs.containers
                hsPkgs.data-accessor
                hsPkgs.data-accessor-template
                hsPkgs.font-opengl-basic4x6
                hsPkgs.mtl
              ]
              else [
                hsPkgs.GLFW-b
                hsPkgs.MonadRandom
                hsPkgs.OpenGL
                hsPkgs.base
                hsPkgs.containers
                hsPkgs.data-accessor
                hsPkgs.data-accessor-template
                hsPkgs.font-opengl-basic4x6
                hsPkgs.mtl
                hsPkgs.template-haskell
              ];
          };
        };
      };
    }