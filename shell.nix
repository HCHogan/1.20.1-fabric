{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "minecraft-server";

  buildInputs = [
    pkgs.openjdk
  ];

  shellHook = ''
    export JAVA_HOME=${pkgs.openjdk}/lib/openjdk
    export PATH=$JAVA_HOME/bin:$PATH

    echo "Starting Minecraft server..."
    # java -Xmx8G -jar fabric-server-mc.1.20.1-loader.0.16.10-launcher.1.0.1.jar nogui
  '';
}
