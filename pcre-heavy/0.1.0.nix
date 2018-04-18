{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pcre-heavy";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2015 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/pcre-heavy";
        url = "";
        synopsis = "A regexp library on top of pcre-light you can actually use.";
        description = "https://github.com/myfreeweb/pcre-heavy";
        buildType = "Simple";
      };
      components = {
        pcre-heavy = {
          depends  = [
            hsPkgs.base
            hsPkgs.pcre-light
            hsPkgs.bytestring
            hsPkgs.stringable
            hsPkgs.template-haskell
          ];
        };
        tests = {
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
        };
      };
    }