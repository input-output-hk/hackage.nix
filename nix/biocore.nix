{
  "0.1" = {
    sha256 = "bc9313f95ecd0e9b3d92f247f21c10142b3b677c0b597110f517325208986685";
    revisions = {
      r0 = {
        nix = import ../hackage/biocore-0.1-r0-f65b282167bffa280f3972e761eb070db7faac4b57154a2897bb7c6739063b9f.nix;
        revNum = 0;
        sha256 = "f65b282167bffa280f3972e761eb070db7faac4b57154a2897bb7c6739063b9f";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "d3a619abaf6f58d2f6409de24eb66604e9295c7f37db4fa7a2461a2a2b2c6fc0";
    revisions = {
      r0 = {
        nix = import ../hackage/biocore-0.2-r0-4ee438208448576ff797d6561c7974ce824f953eba274a0facf7659a95100857.nix;
        revNum = 0;
        sha256 = "4ee438208448576ff797d6561c7974ce824f953eba274a0facf7659a95100857";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "e5f7ec77d333d7f8db92215e9e741a8b64b0e9693206419723bef6d10b526f76";
    revisions = {
      r0 = {
        nix = import ../hackage/biocore-0.3-r0-41c82e7a4971bb0696986cfa41e72cc3e3819fb6211350a8351cd4adb6ab3498.nix;
        revNum = 0;
        sha256 = "41c82e7a4971bb0696986cfa41e72cc3e3819fb6211350a8351cd4adb6ab3498";
      };
      r1 = {
        nix = import ../hackage/biocore-0.3-r1-8dc3b68476bd5fff4f20259c09401968f730a04ea75fc6ba7d4d4898fcf1a3ca.nix;
        revNum = 1;
        sha256 = "8dc3b68476bd5fff4f20259c09401968f730a04ea75fc6ba7d4d4898fcf1a3ca";
      };
      default = "r1";
    };
  };
  "0.3.1" = {
    sha256 = "212b7d7395138d4c231968e1f5bb047c03f61adc6c5eb36162602f42c24db41a";
    revisions = {
      r0 = {
        nix = import ../hackage/biocore-0.3.1-r0-5147fa6c129a38de5b17e28067651c8c7b553ec72abd9ecea01be40fc3cc56f5.nix;
        revNum = 0;
        sha256 = "5147fa6c129a38de5b17e28067651c8c7b553ec72abd9ecea01be40fc3cc56f5";
      };
      r1 = {
        nix = import ../hackage/biocore-0.3.1-r1-846118f74f49df7edf905b3cfb5f983cc1b3a30000d5bb6ad4c1f64da38de353.nix;
        revNum = 1;
        sha256 = "846118f74f49df7edf905b3cfb5f983cc1b3a30000d5bb6ad4c1f64da38de353";
      };
      default = "r1";
    };
  };
}