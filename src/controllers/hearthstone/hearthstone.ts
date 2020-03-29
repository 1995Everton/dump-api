export interface Hearthstone {
    cardId ?: string;
    dbfId ?: number;
    name ?: string;
    cardSet ?: string; 
    type ?: string; 
    faction ?: string;
    rarity ?: string;
    cost ?: number;
    attack ?: number;
    health ?: number;
    text ?: string;
    flavor ?: string;
    artist ?: string;
    collectible ?:true
    elite ?:true
    race ?: string;
    playerClass ?: string;
    img ?: string;
    imgGold ?: string; 
    locale ?: string;
}