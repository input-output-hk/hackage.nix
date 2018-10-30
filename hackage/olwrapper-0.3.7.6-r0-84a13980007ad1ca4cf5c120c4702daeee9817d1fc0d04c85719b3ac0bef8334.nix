{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "olwrapper";
        version = "0.3.7.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "test";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.fay-base)
          (hsPkgs.fay-text)
          (hsPkgs.fay-jquery)
          (hsPkgs.snap)
          (hsPkgs.snaplet-fay)
        ];
      };
      exes = {
        "olwrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.fay)
            (hsPkgs.fay-text)
            (hsPkgs.fay-jquery)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.snaplet-fay)
            (hsPkgs.snap-loader-static)
          ] ++ pkgs.lib.optional (flags.development) (hsPkgs.snap-loader-dynamic);
        };
      };
    };
  }