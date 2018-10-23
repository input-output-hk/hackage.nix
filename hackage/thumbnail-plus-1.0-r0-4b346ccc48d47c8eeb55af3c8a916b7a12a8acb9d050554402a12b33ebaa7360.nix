{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "thumbnail-plus";
        version = "1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa, Michael Snoyman";
      homepage = "https://github.com/loyful/thumbnail-plus";
      url = "";
      synopsis = "Generate thumbnails easily and safely.";
      description = "This package provides every tool you need to easily and safely\ngenerate thumbnails for JPG, GIF and PNG images.\n\nBy safely, we mean that this package should be able to handle\nimages uploaded to a public web server without any known\nvulnerabilities:\n\n* File sizes are constrained and checked.\n\n* Image sizes are constrained and checked before the images\nare loaded into memory.  Uses code from the deprecated\n@imagesize-conduit@ by Michael Snoyman.\n\n* Optionally, the original image is reencoded before being\nsaved.\n\n* The images are processed using the <http://libgd.bitbucket.org/ GD library>,\nwhich is heavily battle-tested and\n<http://www.cvedetails.com/vulnerability-list/vendor_id-2678/Gd-Graphics-Library.html audited by many pairs of eyeballs>.\n\nPlease report any vulnerabilities you may find, we take strive\nto make this library suitable for processing arbitrary images.";
      buildType = "Simple";
    };
    components = {
      "thumbnail-plus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.gd)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.directory)
            (hsPkgs.thumbnail-plus)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }