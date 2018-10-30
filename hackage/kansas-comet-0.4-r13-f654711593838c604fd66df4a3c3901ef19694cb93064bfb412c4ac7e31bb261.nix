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
      specVersion = "1.10";
      identifier = {
        name = "kansas-comet";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 The University of Kansas";
      maintainer = "Andrew Gill <andygill@ku.edu>";
      author = "Andrew Gill <andygill@ku.edu>, Andrew Farmer <anfarmer@ku.edu>";
      homepage = "https://github.com/ku-fpg/kansas-comet/";
      url = "";
      synopsis = "A JavaScript push mechanism based on the comet idiom";
      description = "A transport-level remote JavaScript RESTful push mechanism.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.scotty)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }