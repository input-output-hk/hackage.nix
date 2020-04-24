{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-plain"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/bytestring-plain";
      url = "";
      synopsis = "Plain byte strings ('ForeignPtr'-less 'ByteString's)";
      description = "More compact representation for strict 'ByteString's avoiding the\noverhead and indirection caused by 'ForeignPtr'.\n\nThis representation is useful to reduce the incurred memory overhead\nwhen operating with many small, long-lived, distinct byte strings\n(such as keys for containers).\n\nSee documentation in \"Data.ByteString.Plain\" for more details about\nthis representation.\n\nAs an alternative, recent `bytestring` versions provide\n\"Data.ByteString.Short\" which has a similiar overhead but uses unpinned\nmemory instead (and thus requires an additional string data copy in\ncontrast to \"Data.ByteString.Plain\" which allows to share the string data\nwith the associated \"Data.ByteString\" value).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }