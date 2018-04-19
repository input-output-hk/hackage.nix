{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "alloy-proxy-fd";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2008-2009, University of Kent";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "Some add-on instances for the Alloy library";
        description = "Two modules supplying proxy instances that allow you to define pure and/or effectful\ninstances in terms of their more general\neffectful/route-including equivalents in Alloy.";
        buildType = "Simple";
      };
      components = {
        alloy-proxy-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.alloy
            hsPkgs.mtl
          ];
        };
      };
    }