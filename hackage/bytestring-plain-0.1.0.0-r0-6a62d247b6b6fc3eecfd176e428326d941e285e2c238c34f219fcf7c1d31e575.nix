{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "bytestring-plain"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/bytestring-plain";
      url = "";
      synopsis = "Plain byte strings ('ForeignPtr'-less 'ByteString's)";
      description = "More compact representation for strict 'ByteString's avoiding the\noverhead and indirection caused by 'ForeignPtr'.\n\nThis representation is useful to reduce the incurred memory overhead\nwhen operating with many small, long-lived, distinct byte strings\n(such as keys for containers).\n\nSee documentation in \"Data.ByteString.Plain\" for more details about\nthis representation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          ];
        };
      };
    }