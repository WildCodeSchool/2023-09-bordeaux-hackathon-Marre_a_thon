import streamlit as st
import pandas as pd


if __name__ == "__main__":
    st.set_page_config(
        page_title = "Statistiques de consommation en période de Noël",
        layout = "centered"
    )
st.title("Statistiques de consommation en période de Noël")

with st.sidebar:
    st.header("Naviguer entre les graphiques")
    st.markdown("[:violet[En résumé]](#5ad37297)", unsafe_allow_html=True)
    st.markdown("[:violet[Plats préférés]](#9a751107)", unsafe_allow_html=True)
    st.markdown("[:violet[Liste des souhaits]](#5277a470)", unsafe_allow_html=True)


# Image sous header :
st.image("https://cdn.statcdn.com/Infographic/images/normal/7343.jpeg", caption ="Source Statista.com", width = 800)


st.write("##")
st.write("##")
st.write("##")

# graphique 1
with st.container():
    url = "https://filedn.eu/lHdttuiSAwVYBLWzET7NL14/fichiers%20hackathon/plats-de-noel.csv"
    df = pd.read_csv(url, sep=';', encoding="latin-1")
    df_max = df.sort_values('Pourcentage', ascending=False)
    st.header("Les plats de Noël préférés des français")
    url = "https://filedn.eu/lHdttuiSAwVYBLWzET7NL14/fichiers%20hackathon/plats-de-noel.csv"
    df = pd.read_csv(url, sep=';', encoding="latin-1")
    st.bar_chart(df_max, x='Plats_préférés', y='Pourcentage', color ='Plats_préférés', height=500)


st.write("##")
st.write("##")
st.write("##")

with st.container():
    link2 = "https://filedn.eu/lHdttuiSAwVYBLWzET7NL14/fichiers%20hackathon/souhaits_noel.csv"
    df2 = pd.read_csv(link2, sep=';', encoding="latin-1")
    st.subheader("Liste des souhaits pour Noël")

    st.bar_chart(df2,x="Souhaits", y="Pourcent", width = 800, height = 500, color ='Souhaits')
