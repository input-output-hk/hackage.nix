{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "categorical-algebra";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "";
        url = "";
        synopsis = "Categorical Monoids and Semirings";
        description = "This my attempt at synthesizing a few ideas about invertible programming with Arrow like type classes. Here is a link to pdf produced from the source <https://takeittothelimit.files.wordpress.com/2012/03/semiring.pdf> And here is a blog post that says basically the same thing. <http://takeittothelimit.wordpress.com/2012/03/26/categorical-semirings-2/>";
        buildType = "Simple";
      };
      components = {
        categorical-algebra = {
          depends  = [
            hsPkgs.base
            hsPkgs.newtype
            hsPkgs.pointless-haskell
            hsPkgs.void
          ];
        };
      };
    }