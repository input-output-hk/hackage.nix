{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "GPipe"; version = "2.1.4"; };
      license = "MIT";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://tobbebex.blogspot.se/";
      url = "";
      synopsis = "Typesafe functional GPU graphics programming";
      description = "A typesafe API based on the conceptual model of OpenGl, but without the imperative state machine.\nAims to be as close to the raw OpenGl performance as possible, without compromising type safety or functional style.\nIncludes DSL for shaders to provide type safety even when crossing into that domain.\nUses OpenGl 3.3 core profile under the hood.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.exception-transformers)
          (hsPkgs.containers)
          (hsPkgs.Boolean)
          (hsPkgs.hashtables)
          (hsPkgs.gl)
          (hsPkgs.linear)
          ];
        };
      };
    }