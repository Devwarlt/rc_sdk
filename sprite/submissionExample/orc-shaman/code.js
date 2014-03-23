{
    "id": "orc-shaman",
    "src": "actor/orc-shaman.png",
    "size": 2,
    "side": [
        2,
        0,
        1,
        3
    ],
    "hpBar": -30,
    "legs": 25,
    "preHitBox": [
        -20,
        20,
        -10,
        25
    ],
    "preBumperBox": [
        -20,
        20,
        -10,
        25
    ],
    "anim": {
        "walk": {
            "startY": 0,
            "frame": 4,
            "sizeX": 32,
            "sizeY": 48,
            "dir": 4,
            "spd": 0.25,
            "walk": 1,
            "next": "walk"
        },
        "attack": {
            "startY": 0,
            "frame": 4,
            "sizeX": 32,
            "sizeY": 48,
            "dir": 4,
            "spd": 0.25,
            "next": "walk"
        }
    }
}



Username:<input id="username"></input>
Password:<input id="password"></input>
<button onclick="singIn();">Sign In</button>