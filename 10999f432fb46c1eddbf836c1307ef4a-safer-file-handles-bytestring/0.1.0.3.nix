{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "safer-file-handles-bytestring";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Extends safer-file-handles with ByteString operations";
      description = "Extends @safer-file-handles@ with @ByteString@ operations";
      buildType = "Simple";
    };
    components = {
      "safer-file-handles-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.regions)
          (hsPkgs.transformers)
          (hsPkgs.explicit-iomodes-bytestring)
          (hsPkgs.safer-file-handles)
        ];
      };
    };
  }