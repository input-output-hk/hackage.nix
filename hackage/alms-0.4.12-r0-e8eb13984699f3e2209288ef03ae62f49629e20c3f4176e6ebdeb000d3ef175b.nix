{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      editline = true;
      readline = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "alms";
        version = "0.4.12";
      };
      license = "BSD-3-Clause";
      copyright = "2010, Jesse A. Tov";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
      url = "";
      synopsis = "a practical affine language";
      description = "Alms is an experimental, general-purpose programming language that\nsupports practical affine types. To offer the expressiveness of\nGirard’s linear logic while keeping the type system light and\nconvenient, Alms uses expressive kinds that minimize notation while\nmaximizing polymorphism between affine and unlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "alms" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.template-haskell)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.array)
          ] ++ (if flags.readline
            then [ (hsPkgs.readline) ]
            else pkgs.lib.optional (flags.editline) (hsPkgs.editline));
        };
      };
    };
  }