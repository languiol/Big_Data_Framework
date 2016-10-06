import numpy as np


def map(a):
    
    #Découper les mot de la phrase et les ranger dans une matrice 1xn  
    ligne_mots = a.split(' ')
    np_ligne_mots = np.array(ligne_mots)   
    
    #Transformer la matrice précédente enn une colonne
    np_liste_mots = np.reshape(np_ligne_mots,(len(np_ligne_mots),1))
    
    #Initiation de chaque mot: Créer une colonne de 1
    initiation=np.reshape(np.ones(len(np_liste_mots)),(len(np_ligne_mots),1))    
    
    #Regroupage de matrice
    mapp = np.concatenate((np_liste_mots,initiation),axis=1)
         
    return mapp


def reduc(b):
    #Comptage des mots identiques dans la matrice
    doublon = np.unique(b, return_counts=True)
    np_doublon = np.array(doublon)
    redd = np_doublon.transpose()
         
    return redd

#def reduc1 (b):
    #for i in range(len(b)):
    #    for y in 1:len(b):
     #       if b[[i,:]]==b[[j,:]]:
                


def map_red1(a):
    b=map(a)
    c=reduc(b)    
    return c



def map_red2(a):
    
    #Découper les mots de la phrase et les ranger dans une matrice nx1  
    liste_mots = a.split(' ')
    np_liste_mots = np.array(liste_mots)   

    #Comptage des mots identiques dans la matrice
    doublon = np.unique(np_liste_mots, return_counts=True)    
    np_doublon = np.array(doublon)
    mapp_redd = np_doublon.transpose()
    
    return mapp_redd
    
