{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reanimate-svg"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "Vincent Berthoux, David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "SVG file loader and serializer";
      description = "reanimate-svg provides types representing a SVG document,\nand allows to load and save it.\n\nThe types definition are aimed at rendering,\nso they are rather comple. For simpler SVG document building,\nlook after `lucid-svg`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.JuicyPixels)
          (hsPkgs.attoparsec)
          (hsPkgs.scientific)
          (hsPkgs.containers)
          (hsPkgs.xml)
          (hsPkgs.bytestring)
          (hsPkgs.linear)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.svg-tree)
            (hsPkgs.attoparsec)
            (hsPkgs.scientific)
            (hsPkgs.linear)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }