{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sunroof-server"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 The University of Kansas";
      maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
      author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
      homepage = "https://github.com/ku-fpg/sunroof-server";
      url = "";
      synopsis = "Monadic Javascript Compiler - Server Utilities";
      description = "Utilities to use Sunroof together with Kansas-Comet to create web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.vector-space)
          (hsPkgs.kansas-comet)
          (hsPkgs.wai-middleware-static)
          (hsPkgs.filepath)
          (hsPkgs.scotty)
          (hsPkgs.semigroups)
          (hsPkgs.warp)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.tagged)
          (hsPkgs.time)
          (hsPkgs.sunroof-compiler)
          ];
        };
      };
    }