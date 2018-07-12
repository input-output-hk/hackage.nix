{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pcre-heavy";
          version = "1.0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2015 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/pcre-heavy";
        url = "";
        synopsis = "A regexp library on top of pcre-light you can actually use.";
        description = "A regular expressions library that does not suck.\nBased on <https://hackage.haskell.org/package/pcre-light pcre-light>.\nTakes and returns <https://hackage.haskell.org/package/stringable Stringables> everywhere.\nIncludes a QuasiQuoter for regexps that does compile time checking.\nSEARCHES FOR MULTIPLE MATCHES! DOES REPLACEMENT!";
        buildType = "Simple";
      };
      components = {
        "pcre-heavy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.pcre-light
            hsPkgs.bytestring
            hsPkgs.string-conversions
            hsPkgs.semigroups
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
            ];
          };
        };
      };
    }