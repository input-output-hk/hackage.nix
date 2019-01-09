{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "attoparsec-text"; version = "0.8.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://patch-tag.com/r/felipe/attoparsec-text/home";
      url = "";
      synopsis = "Fast combinator parsing for texts";
      description = "A fast parser combinator library, aimed particularly at dealing\nefficiently with network protocols and complicated text/binary\nfile formats.\n\nThis library is basically a translation of the original\nattoparsec library to use text instead of bytestrings.\n\nChanges in version 0.8.5.0:\n\n* Ported changes from attoparsec 0.8.5.0.\n\nChanges in version 0.8.2.1:\n\n* Permit newer version of containers for GHC 7.0.\n\nChanges in version 0.8.2.0:\n\n* Add @IsString@ instance to @Parser@.\n\n* Add specializations of @\\<*@ and @*\\>@, see the docs for\nmore information.\n\n* Add @digit@, @letter@, @space@, @decimal@, @hexadecimal@,\n@signed@, @double@ and @rational@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.array)
          ];
        };
      };
    }