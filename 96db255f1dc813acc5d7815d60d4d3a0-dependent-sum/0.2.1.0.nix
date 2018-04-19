{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dependent-sum";
          version = "0.2.1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/dependent-sum";
        url = "";
        synopsis = "Dependent sum type";
        description = "A dependent sum is a generalization of a\nparticular way of thinking about the @Either@\ntype.  @Either a b@ can be thought of as a\n2-tuple @(tag, value)@, where the value of the\ntag determines the type of the value.  In\nparticular, either @tag = Left@ and @value :: a@\nor @tag = Right@ and @value :: b@.\n\nThis package allows you to define your own\ndependent sum types by using your own \\\"tag\\\"\ntypes.";
        buildType = "Simple";
      };
      components = {
        dependent-sum = {
          depends  = [ hsPkgs.base ];
        };
      };
    }