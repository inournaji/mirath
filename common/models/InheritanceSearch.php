<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Inheritance;

/**
 * InheritanceSearch represents the model behind the search form of `common\models\Inheritance`.
 */
class InheritanceSearch extends Inheritance
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'gender', 'husband', 'wives', 'sons', 'daughters', 'grandsons', 'granddaughters', 'father', 'mother', 'grandfather', 'paternal_grandmother', 'maternal_grandmother', 'full_brothers', 'full_sisters', 'paternal_brothers', 'paternal_sisters', 'maternal_brothers', 'maternal_sisters', 'full_nephews', 'paternal_nephews', 'fullpaternal_uncles', 'paternal_paternal_uncles', 'full_cousins', 'paternal_cousins'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Inheritance::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'gender' => $this->gender,
            'husband' => $this->husband,
            'wives' => $this->wives,
            'sons' => $this->sons,
            'daughters' => $this->daughters,
            'grandsons' => $this->grandsons,
            'granddaughters' => $this->granddaughters,
            'father' => $this->father,
            'mother' => $this->mother,
            'grandfather' => $this->grandfather,
            'paternal_grandmother' => $this->paternal_grandmother,
            'maternal_grandmother' => $this->maternal_grandmother,
            'full_brothers' => $this->full_brothers,
            'full_sisters' => $this->full_sisters,
            'paternal_brothers' => $this->paternal_brothers,
            'paternal_sisters' => $this->paternal_sisters,
            'maternal_brothers' => $this->maternal_brothers,
            'maternal_sisters' => $this->maternal_sisters,
            'full_nephews' => $this->full_nephews,
            'paternal_nephews' => $this->paternal_nephews,
            'fullpaternal_uncles' => $this->fullpaternal_uncles,
            'paternal_paternal_uncles' => $this->paternal_paternal_uncles,
            'full_cousins' => $this->full_cousins,
            'paternal_cousins' => $this->paternal_cousins,
        ]);

        return $dataProvider;
    }
}
