{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "rtld";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © 2012-2014 Krzysztof Kardzis";
      maintainer = "Krzysztof Kardzis <kkardzis@gmail.com>";
      author = "Krzysztof Kardzis <kkardzis@gmail.com>";
      homepage = "https://github.com/kkardzis/rtld";
      url = "";
      synopsis = "dynamic linker tools for Haskell";
      description = "Package @rtld@ provides simplistic interface to the dynamic linker/loader.\nIt wraps 'dlopen/dlclose' family of functions ('LoadLibrary/FreeLibrary'\non Windows) and tries to provide a common interface to dynamically load\nforeign libraries at runtime. It is used currently as a helper package\nfor @curlhs@ (<http://hackage.haskell.org/package/curlhs>), but is not\nready for the public use (more tests and design decisions needed).\n\nPackage is distributed under ISC License (MIT/BSD-style, see LICENSE file\nfor details). It is marked as @OtherLicense@ due to limitations of Cabal.\n\n<<https://ga-beacon.appspot.com/UA-53767359-1/hackage/rtld>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }