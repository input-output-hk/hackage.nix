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
      specVersion = "1.8";
      identifier = {
        name = "hood";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010-2015 University of Kansas, (c) 2013-2015 Maarten Faddegon";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Hood";
      url = "";
      synopsis = "Debugging by observing in place";
      description = "Hood debugger, based on the idea of observing functions and structures as they are evaluated.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.FPretty)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }