{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "pcre-heavy";
          version = "0.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2015 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/pcre-heavy";
        url = "";
        synopsis = "A regexp library on top of pcre-light you can actually use.";
        description = "A regular expressions library that does not suck.\n- based on <https://hackage.haskell.org/package/pcre-light pcre-light>\n- takes and returns <https://hackage.haskell.org/package/stringable Stringables> everywhere\n- a QuasiQuoter for regexps that does compile time checking\n- SEARCHES FOR MULTIPLE MATCHES! DOES REPLACEMENT!";
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