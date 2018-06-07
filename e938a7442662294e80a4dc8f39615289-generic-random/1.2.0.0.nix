{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generic-random";
          version = "1.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lysxia@gmail.com";
        author = "Li-yao Xia";
        homepage = "http://github.com/lysxia/generic-random";
        url = "";
        synopsis = "Generic random generators";
        description = "For more information\n\n- \"Generic.Random.Tutorial\"\n\n- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html\n\n- https://byorgey.wordpress.com/2016/09/20/the-generic-random-library-part-1-simple-generic-arbitrary-instances/";
        buildType = "Simple";
      };
      components = {
        generic-random = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.generic-random
            ];
          };
        };
      };
    }