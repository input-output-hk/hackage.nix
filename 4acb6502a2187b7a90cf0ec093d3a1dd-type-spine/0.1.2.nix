{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-spine";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A spine-view on types";
        description = "Until\n<http://research.microsoft.com/en-us/people/dimitris/fc-kind-poly.pdf>\nreaches the mainline, this is a surprisingly effective workaround. We support\na limited number of kinds out-of-the-box, but it can be extended by the\npower-user. Also, quasiquotation makes the code rather legible. Given a\nfinite set of kinds to support, generic type families can be defined that\nwill work for an infinite number of types. It is very much a \\\"bumping up\\\"\nof the term-level /spine view/.\n\nSee the @type-cereal@ package for a use case.";
        buildType = "Simple";
      };
      components = {
        "type-spine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }