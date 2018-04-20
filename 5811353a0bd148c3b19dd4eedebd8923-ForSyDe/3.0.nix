{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ForSyDe";
          version = "3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2003-2008 SAM group, KTH/ICT/ECS";
        maintainer = "forsyde-dev@ict.kth.se";
        author = "SAM group, KTH/ICT/ECS";
        homepage = "http://www.ict.kth.se/org/ict/ecs/sam/projects/forsyde/www/";
        url = "";
        synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
        description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <http://www.ict.kth.se/org/ict/ecs/sam/projects/forsyde/www/>.";
        buildType = "Custom";
      };
      components = {
        ForSyDe = {
          depends  = [
            hsPkgs.type-level
            hsPkgs.parameterized-data
            hsPkgs.containers
            hsPkgs.packedstring
            hsPkgs.base
            hsPkgs.regex-posix
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.template-haskell
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.old-time
            hsPkgs.random
          ];
        };
      };
    }