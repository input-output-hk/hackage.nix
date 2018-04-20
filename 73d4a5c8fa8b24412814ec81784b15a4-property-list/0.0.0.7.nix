{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      new-data-object = true;
      new-template-haskell = true;
      haxml_1_13 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "property-list";
          version = "0.0.0.7";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/property-list";
        url = "";
        synopsis = "XML property list parser";
        description = "Parser, data type and formatter for Apple's XML property list 1.0 format.\nThe bytestring-0.9.1.5 update on hackage seems to have\ncratered the build for many packages, including the last\nseveral versions of this one, so this version will\nprobably not build properly on the hackage site.\nAs far as I know, though, that is the only reason\nit fails. This version includes a hack to try to make\nit build on the site, triggered by the HaXml_1_13 build flag.";
        buildType = "Simple";
      };
      components = {
        property-list = {
          depends  = (([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-class
            hsPkgs.containers
            hsPkgs.dataenc
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.pretty
            hsPkgs.time
            hsPkgs.th-fold
          ] ++ [
            hsPkgs.template-haskell
          ]) ++ [
            hsPkgs.data-object
          ]) ++ (if _flags.haxml_1_13
            then [
              hsPkgs.HaXml
              hsPkgs.bytestring
              hsPkgs.bytestring-class
              hsPkgs.data-object
              hsPkgs.utf8-string
            ]
            else [ hsPkgs.HaXml ]);
        };
      };
    }