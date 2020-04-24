{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "not-gloss"; version = "0.7.6.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012-2015";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Painless 3D graphics, no affiliation with gloss";
      description = "This package intends to make it relatively easy to do simple 3d graphics using high-level primitives.\nIt is inspired by gloss and attempts to emulate it.\nThis is an early release and the api will certainly change.\nNote that transparency can be controlled by the alpha value: \"makeColor r g b alpha\" but that you must draw objects from back to front for transparency to properly work (just put clear things last).\nAlso, transparent ellipsoids and cylinders have ugly artifacts, sorry.\nLook at the complimentary package not-gloss-examples to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."spatial-math" or ((hsPkgs.pkgs-errors).buildDepError "spatial-math"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."vector-binary-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary-instances"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          ];
        buildable = true;
        };
      };
    }