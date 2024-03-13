class ConsultsController < ActionController::Base
    INPI_QUESTION_1 = "人よりたくさんのお金を持つのは良くない"
    INPI_QUESTION_2 = "お金持ちは欲深い"
    INPI_QUESTION_3 = "人は他人を利用してお金持ちになるものだ"
    INPI_QUESTION_4 = "私はお金を持つことに値しない人間だ"
    INPI_QUESTION_5 = "善良な人はお金のことを気にしてはいけない"
    INPI_QUESTION_6 = "お金持ちが善人でいるのは難しい"
    INPI_QUESTION_7 = "お金が少ないほど人生は良いものになる"
    INPI_QUESTION_8 = "お金は人を堕落させる"
    INPI_QUESTION_9 = "お金持ちになるということは、昔からの友人や家族と疎遠になるということだ"
    SUHAI_QUESTION_1 = "もっとお金があれば、物事は良くなるだろう"
    SUHAI_QUESTION_2 = "お金がたくさんあれば幸せになれる"
    SUHAI_QUESTION_3 = "貧しいまま幸せになるのは難しい"
    SUHAI_QUESTION_4 = "お金はいくらあっても足りない"
    SUHAI_QUESTION_5 = "お金は力だ"
    SUHAI_QUESTION_6 = "お金は私の問題すべてを解決してくれる"
    SUHAI_QUESTION_7 = "お金で自由を買うことができる"
    CHII_QUESTION_1 = "お金を持つに値しない人間だから貧乏人なのだ"
    CHII_QUESTION_2 = "愛とお金を同時に得ることはできない"
    CHII_QUESTION_3 = "何かを買うときは新品しか買わない"
    CHII_QUESTION_4 = "貧しい人は怠け者だ"
    CHII_QUESTION_5 = "お金は人生に意味を与えるものだ"
    CHII_QUESTION_6 = "私の自己価値は、私の純資産に等しい"
    CHII_QUESTION_7 = "最高と判断できない者は、買う価値がない"
    CHII_QUESTION_8 = "人間の成功は稼いだお金の額で決まる"
    KEKAI_QUESTION_1 = "自分の貯蓄額や収入を他人に教えてはいけない"
    KEKAI_QUESTION_2 = "他人に貯蓄額や収入を訪ねるのは間違っている"
    KEKAI_QUESTION_3 = "お金は使うものではなく、貯めるものだ"
    KEKAI_QUESTION_4 = "将来トラブルが起きた時のために貯金をすることは重要だ"
    KEKAI_QUESTION_5 = "人間はお金のために働くべきであり、他人から経済的に保護されるべきではない"
    KEKAI_QUESTION_6 = "もしもの時のために十分な貯金があるか、気になってしょうがない"
    KEKAI_QUESTION_7 = "たとえ時間がかかっても、何かを買うときには常に最良のものを探すべき"
    KEKAI_QUESTION_8 = "自分のためにお金を使うことは贅沢だ"
    
    def index
        @inpiq1 = INPI_QUESTION_1
        @inpiq2 = INPI_QUESTION_2
        @inpiq3 = INPI_QUESTION_3
        @inpiq4 = INPI_QUESTION_4
        @inpiq5 = INPI_QUESTION_5
        @inpiq6 = INPI_QUESTION_6
        @inpiq7 = INPI_QUESTION_7
        @inpiq8 = INPI_QUESTION_8
        @inpiq9 = INPI_QUESTION_9

        @suhaiq1 = SUHAI_QUESTION_1
        @suhaiq2 = SUHAI_QUESTION_2
        @suhaiq3 = SUHAI_QUESTION_3
        @suhaiq4 = SUHAI_QUESTION_4
        @suhaiq5 = SUHAI_QUESTION_5
        @suhaiq6 = SUHAI_QUESTION_6
        @suhaiq7 = SUHAI_QUESTION_7

        @chiiq1 = CHII_QUESTION_1
        @chiiq2 = CHII_QUESTION_2
        @chiiq3 = CHII_QUESTION_3
        @chiiq4 = CHII_QUESTION_4
        @chiiq5 = CHII_QUESTION_5
        @chiiq6 = CHII_QUESTION_6
        @chiiq7 = CHII_QUESTION_7
        @chiiq8 = CHII_QUESTION_8

        @kekaiq1 = KEKAI_QUESTION_1
        @kekaiq2 = KEKAI_QUESTION_2
        @kekaiq3 = KEKAI_QUESTION_3
        @kekaiq4 = KEKAI_QUESTION_4
        @kekaiq5 = KEKAI_QUESTION_5
        @kekaiq6 = KEKAI_QUESTION_6
        @kekaiq7 = KEKAI_QUESTION_7
        @kekaiq8 = KEKAI_QUESTION_8
    end
    def new
        @consult_results = consult_results.new
    end

    def form
        @inpi = 0
        @suhai = 0
        @chii = 0
        @kekai = 0

        if params[:inpiq1]
            @inpi += params[:inpiq1].to_i
        else
            @inpi += 0
        end
    end
    def create
        @consult_results = consult_results.new(results_params)
        if @consult_results.save
          # 保存が成功した場合の処理
          redirect_to consult_results_path(@consult_results)
        else
          render :index
        end
    end


    private
    def results_params
        params.require(:consult_results).permit(@inpi, @suhai, @chii, @kekai)
    end
end
