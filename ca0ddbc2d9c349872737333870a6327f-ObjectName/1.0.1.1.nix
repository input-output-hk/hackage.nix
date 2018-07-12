{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ObjectName";
          version = "1.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sven Panne <svenpanne@gmail.com>";
        author = "Sven Panne";
        homepage = "https://github.com/svenpanne/ObjectName";
        url = "";
        synopsis = "Explicitly handled object names";
        description = "This tiny package contains the class ObjectName, which corresponds to the\ngeneral notion of explicitly handled identifiers for API objects, e.g. a\ntexture object name in OpenGL or a buffer object name in OpenAL.";
        buildType = "Simple";
      };
      components = {
        "ObjectName" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }