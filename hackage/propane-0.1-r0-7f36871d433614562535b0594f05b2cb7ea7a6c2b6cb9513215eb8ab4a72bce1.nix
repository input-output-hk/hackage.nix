{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "propane";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Functional synthesis of images and animations";
      description = "Propane is a system for synthesizing images and animations, in the spirit\nof Pan (<http://conal.net/Pan/>) and many other projects.  The core idea is\nthat an image is a function assigning a colour to each point in the plane.\nSimilarly, an animation assigns an image to each point in time.  Haskell's\ntools for functional and declarative programming can be used directly on\nimages and animations.\n\nSeveral examples are provided, in the @examples/@ directory.\n\nPropane uses the Repa array library.  This means that Propane automatically\nuses multiple CPU cores for rendering, provided the program is compiled and\nrun with threads enabled.  That said, the implementation has not yet been\noptimized for speed.\n\nPropane is a modest toy right now, but there are vague plans to make it\ndo fancy things.  Please contact the author with suggestions or code!";
      buildType = "Simple";
    };
    components = {
      "propane" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.repa)
          (hsPkgs.repa-devil)
          (hsPkgs.colour)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.spawn)
        ];
      };
    };
  }