<?php

use yii\db\Migration;

/**
 * Class m180418_003555_remove_unused_fields_from_db
 */
class m180418_003555_remove_unused_fields_from_db extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        // drops foreign key for table `questiongroup`
        $this->dropForeignKey(
            'fk-question-group_id',
            'question'
        );

        // drops index for column `group_id`
        $this->dropIndex(
            'idx-question-group_id',
            'question'
        );
        $this->dropColumn('question','group_id');
        $this->dropTable('questiongroup');

        $this->dropColumn('question','pp');


    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }
        $this->createTable('questiongroup', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull()->unique(),
        ],$tableOptions);
        $this->addColumn('question', 'group_id', $this->integer());

        // creates index for column `group_id`
        $this->createIndex(
            'idx-question-group_id',
            'question',
            'group_id'
        );
        // add foreign key for table `questiongroup`
        $this->addForeignKey(
            'fk-question-group_id',
            'question',
            'group_id',
            'questiongroup',
            'id'
        );

        $this->addColumn('question', 'pp', $this->smallInteger());

    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180418_003555_remove_unused_fields_from_db cannot be reverted.\n";

        return false;
    }
    */
}
