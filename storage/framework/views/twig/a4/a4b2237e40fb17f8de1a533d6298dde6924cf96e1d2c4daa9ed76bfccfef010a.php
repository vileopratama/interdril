<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/wysiwyg-field_type/resources/views/choose.twig */
class __TwigTemplate_24e41273d049461fc762e0c32cb5b726f8d8954ca26bf0e41f71d9e147ed7dc1 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"modal-header\">
    <button class=\"close\" data-dismiss=\"modal\">
        <span>&times;</span>
    </button>
    <h4 class=\"modal-title\">";
        // line 5
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.wysiwyg::message.choose_folder")), "html", null, true);
        echo "</h4>
</div>

<div class=\"modal-body\">
    ";
        // line 9
        if ( !$this->getAttribute(($context["folders"] ?? null), "isEmpty", array(), "method")) {
            // line 10
            echo "        <ul class=\"nav nav-pills nav-stacked\">
            ";
            // line 11
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["folders"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["folder"]) {
                // line 12
                echo "                <li class=\"nav-item\">
                    <a href=\"";
                // line 13
                echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('url_to')->getCallable(), array("to", ("streams/wysiwyg-field_type/upload/" . $this->getAttribute($context["folder"], "id", array())))), "html", null, true);
                echo "?";
                echo twig_escape_filter($this->env, twig_urlencode_filter(call_user_func_array($this->env->getFunction('input_get')->getCallable(), array())), "html", null, true);
                echo "\"
                       class=\"nav-link ajax\">
                        <strong>";
                // line 15
                echo twig_escape_filter($this->env, $this->getAttribute($context["folder"], "name", array()), "html", null, true);
                echo "</strong>
                        <br>
                        <small>";
                // line 17
                echo twig_escape_filter($this->env, $this->getAttribute($context["folder"], "description", array()), "html", null, true);
                echo "</small>
                    </a>
                </li>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['folder'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 21
            echo "        </ul>
    ";
        } else {
            // line 23
            echo "        ";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("streams::message.no_results")), "html", null, true);
            echo "
    ";
        }
        // line 25
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/wysiwyg-field_type/resources/views/choose.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 25,  70 => 23,  66 => 21,  56 => 17,  51 => 15,  44 => 13,  41 => 12,  37 => 11,  34 => 10,  32 => 9,  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"modal-header\">
    <button class=\"close\" data-dismiss=\"modal\">
        <span>&times;</span>
    </button>
    <h4 class=\"modal-title\">{{ trans('anomaly.field_type.wysiwyg::message.choose_folder') }}</h4>
</div>

<div class=\"modal-body\">
    {% if not folders.isEmpty() %}
        <ul class=\"nav nav-pills nav-stacked\">
            {% for folder in folders %}
                <li class=\"nav-item\">
                    <a href=\"{{ url_to('streams/wysiwyg-field_type/upload/' ~ folder.id) }}?{{ input_get()|url_encode }}\"
                       class=\"nav-link ajax\">
                        <strong>{{ folder.name }}</strong>
                        <br>
                        <small>{{ folder.description }}</small>
                    </a>
                </li>
            {% endfor %}
        </ul>
    {% else %}
        {{ trans('streams::message.no_results') }}
    {% endif %}
</div>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/wysiwyg-field_type/resources/views/choose.twig", "");
    }
}
