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
        version = "0.3.7.15";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "Haskell OpenLayers Wrapper\nthe project has development status\nthe library is also the tutorial\nfor a full documentation please read my diploma thesis 2015 (TU Vienna)\nfully available in summer 2015";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.snap-loader-dynamic)
        ];
      };
      exes = {
        "olwrapper" = {
          depends = [
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