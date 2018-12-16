{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bytestring_has_builder = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "netrc";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "© 2015 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/netrc";
      url = "";
      synopsis = "Parser for .netrc files";
      description = "See <http://linux.die.net/man/5/netrc netrc(5)> manual page for more\ninformation about @.netrc@ files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ (if flags.bytestring_has_builder
          then [ (hsPkgs.bytestring) ]
          else [
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
          ]);
      };
      tests = {
        "test-netrc" = {
          depends = [
            (hsPkgs.netrc)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }