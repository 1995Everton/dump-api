export interface LeagueOfLegends {
    id: string;
    key: string;
    name: string;
    title: string;
    image: {
        full: string;
    },
    skins: Skins[];
    lore: string;
    blurb: string;
    allytips: string[];
    enemytips: string[];
    tags: string[];
    partype: string;
    info: {
        attack: number;
        defense: number;
        magic: number;
        difficulty: number;
    },
    stats: {
        hp: number;
        hpperlevel: number;
        mp: number;
        mpperlevel: number;
        movespeed: number;
        armor: number;
        armorperlevel: number;
        spellblock: number;
        spellblockperlevel: number;
        attackrange: number;
        hpregen: number;
        hpregenperlevel: number;
        mpregen: number;
        mpregenperlevel: number;
        crit: number;
        critperlevel: number;
        attackdamage: number;
        attackdamageperlevel: number;
        attackspeedperlevel: number;
        attackspeed: number;
    },
    spells: Spells[];
    passive: {
        name: string;
        description: string;
        image: {
            full: string;
        }
    }
}

interface Skins {
    id: string;
    num: number;
    name: string;
    chromas: boolean;
}

interface Spells {
    id: string;
    name: string;
    description: string;
    tooltip: string;
    cooldownBurn: string;
    costBurn: string;
    rangeBurn: number;
    maxrank: number;
    image: {
        full: string
    }
}