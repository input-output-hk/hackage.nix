{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Control-Engine"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Control-Engine";
      url = "";
      synopsis = "A parallel producer/consumer engine (thread pool)";
      description = "A parallel producer/consumer engine (thread pool).  There are lots\nof features in the Engine, to include dynamically adjustable hooks,\nmanaged state, and injection points.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.concurrent)
            (hsPkgs.BoundedChan)
            ]
          else [ (hsPkgs.base) (hsPkgs.stm) (hsPkgs.BoundedChan) ];
        };
      };
    }