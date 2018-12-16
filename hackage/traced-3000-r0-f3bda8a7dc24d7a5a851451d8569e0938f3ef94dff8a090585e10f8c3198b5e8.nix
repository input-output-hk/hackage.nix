{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "traced";
        version = "3000";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Simple evaluation trace";
      description = "The module defines a type constructor 'Traced', which allows evaluation\nof values to be traced.  Instances for all numeric types make tracing\nnumeric evaluation especially easy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }