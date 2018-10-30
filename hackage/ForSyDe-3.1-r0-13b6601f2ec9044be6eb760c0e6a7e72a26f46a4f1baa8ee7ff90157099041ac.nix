{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ForSyDe";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2010 SAM group, KTH/ICT/ES";
      maintainer = "forsyde-dev@ict.kth.se";
      author = "SAM group, KTH/ICT/ES";
      homepage = "http://www.ict.kth.se/forsyde/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <http://www.ict.kth.se/forsyde/>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.type-level)
          (hsPkgs.parameterized-data)
          (hsPkgs.containers)
          (hsPkgs.packedstring)
          (hsPkgs.base)
          (hsPkgs.regex-posix)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.syb)
        ];
      };
    };
  }